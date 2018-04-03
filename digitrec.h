//===========================================================================
// digitrec.h
//===========================================================================
// @brief: This header file defines the interface for the core functions.

#ifndef DIGITREC_H
#define DIGITREC_H

#include "typedefs.h"
#include "training_data.h"

// The K_CONST value: number of nearest neighbors
#ifndef K_CONST
#define K_CONST 3
#endif

// Top function for digit recognition
bit4 digitrec( digit input );

// Given the testing instance and a (new) training instance,
// this function is expected to maintain/update an array of
// K minimum distances per training set
void update_knn( digit test_inst, digit train_inst, bit6 min_distances[K_CONST] );

// Among 10xK minimum distance values, this function finds 
// the actual K nearest neighbors and determine the final 
// output based on the most common digit represented by these
// nearest neighbors (i.e., a vote among KNNs). 
bit4 knn_vote( bit6 min_distances[10][K_CONST] );

#endif
