//==========================================================================
// digitrec.cpp
//==========================================================================
// @brief: A k-nearest-neighbors implementation for digit recognition

#include "digitrec.h"
//----------------------------------------------------------
// Top function
//----------------------------------------------------------
// @param[in] : input - the testing instance
// @return : the recognized digit (0~9)

bit4 digitrec(digit input) {
#include "training_data.h"

  // This array stores K minimum distances per training set
  bit6 knn_set[10][K_CONST];
#pragma HLS ARRAY_PARTITION variable = knn_set cyclic factor = 3 dim = 0

  // Initialize the knn set
  for (int i = 0; i < 10; ++i)
    for (int k = 0; k < K_CONST; ++k)
      // Note that the max distance is 49
      knn_set[i][k] = 50;

loop2:
  for (int i = 0; i < TRAINING_SIZE; ++i) {
  loop2_1:
    for (int j = 0; j < 10; j++) {
#pragma HLS PIPELINE
#pragma HLS UNROLL
      // Read a new instance from the training set
      digit training_instance = training_data[j * TRAINING_SIZE + i];
      // Update the KNN set
      update_knn(input, training_instance, knn_set[j]);
    }
  }

  // Compute the final output
  return knn_vote(knn_set);
}

//-----------------------------------------------------------------------
// update_knn function
//-----------------------------------------------------------------------
// Given the test instance and a (new) training instance, this
// function maintains/updates an array of K minimum
// distances per training set.

// @param[in] : test_inst - the testing instance
// @param[in] : train_inst - the training instance
// @param[in/out] : min_distances[K_CONST] - the array that stores the current
//                  K_CONST minimum distance values per training set

void update_knn(digit test_inst, digit train_inst,
                bit6 min_distances[K_CONST]) {
#pragma HLS PIPELINE
  // Compute the difference using XOR
  digit diff = test_inst ^ train_inst;

  bit6 dist = 0;
  // Count the number of set bits
  for (int i = 0; i < 49; ++i) {
    dist += diff[i];
  }

  // -----------------------------
  // YOUR CODE GOES HERE
  // -----------------------------

  // for fixed k = 3
  if (dist < min_distances[0]) {
    min_distances[2] = min_distances[1];
    min_distances[1] = min_distances[0];
    min_distances[0] = dist;
  } else if (dist < min_distances[1]) {
    min_distances[2] = min_distances[1];
    min_distances[1] = dist;
  } else if (dist < min_distances[2]) {
    min_distances[2] = dist;
  }

  // // for varying k
  // bit6 temp_min_distance;
  // bit6 min_distance_last_elem;
  // bit6 temp_min_distance_last_elem;
  // min_distance_last_elem = dist;
  // for (int i = K_CONST - 1; i >= 1; i--) {
  //   if (min_distance_last_elem < min_distances[i]) {
  //     temp_min_distance_last_elem = min_distance_last_elem;
  //     min_distance_last_elem = min_distances[i];
  //     min_distances[i] = temp_min_distance_last_elem;
  //   } else if (min_distances[i] < min_distances[i - 1]) {
  //     temp_min_distance = min_distances[i];
  //     min_distances[i] = min_distances[i - 1];
  //     min_distances[i - 1] = temp_min_distance;
  //   }
  // }
}

//-----------------------------------------------------------------------
// knn_vote function
//-----------------------------------------------------------------------
// Given 10xK minimum distance values, this function
// finds the actual K nearest neighbors and determines the
// final output based on the most common digit represented by
// these nearest neighbors (i.e., a vote among KNNs).
//
// @param[in] : knn_set - 10xK_CONST min distance values
// @return : the recognized digit
//

bit4 knn_vote(bit6 knn_set[10][K_CONST]) {
#pragma HLS PIPELINE
  // -----------------------------
  // YOUR CODE GOES HERE
  // -----------------------------
  int sum_distances = 0;
  int min_sum_distances = K_CONST * 50;
  int digit_recognized;
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < K_CONST; j++) {
      sum_distances += knn_set[i][j];
    }
    if (sum_distances < min_sum_distances) {
      min_sum_distances = sum_distances;
      digit_recognized = i;
    }
    sum_distances = 0;
  }
  return digit_recognized;
}
