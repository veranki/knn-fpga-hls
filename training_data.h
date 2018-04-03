//===========================================================================
// training_data.h
//===========================================================================
// @brief: This header defines a 2D array that includes 10 training sets, 
//         where each set contains 1800 training data.


#ifndef TRAINING_DATA_H
#define TRAINING_DATA_H

#include "typedefs.h"

#define TRAINING_SIZE 1800

const digit training_data[10 * TRAINING_SIZE] = {
    #include "data/training_set_0.dat" 
    #include "data/training_set_1.dat" 
    #include "data/training_set_2.dat" 
    #include "data/training_set_3.dat" 
    #include "data/training_set_4.dat" 
    #include "data/training_set_5.dat" 
    #include "data/training_set_6.dat" 
    #include "data/training_set_7.dat" 
    #include "data/training_set_8.dat" 
    #include "data/training_set_9.dat"
};

#endif
