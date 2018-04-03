//=========================================================================
// testbench.cpp
//=========================================================================
// @brief: testbench for k-nearest-neighbor digit recongnition application

#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string>

#include "digitrec.h"

//using namespace std;

int main() 
{
  // Output file that saves the test bench results
  std::ofstream outfile;
  outfile.open("out.dat");
  
  // Read input file for the testing set
  std::string line;
  std::ifstream myfile ("data/testing_set.dat");
  
  if ( myfile.is_open() ) {
    int error = 0;
    int num_test_insts = 0;
    
    while ( std::getline( myfile, line) ) {
      // Read handwritten digit input and expected digit    
      digit input_digit =
          strtoul( line.substr(0, line.find(",")).c_str(), NULL, 16);
      int input_value =
          strtoul(line.substr(line.find(",") + 1,
                              line.length()).c_str(), NULL, 10);
      
      // Call design under test (DUT)
      bit4 interpreted_digit = digitrec(input_digit);
      
      // Print result messages to console
      num_test_insts++;
      std::cout << "#" << std::dec << num_test_insts;
      std::cout << ": \tTestInstance=" << std::hex << input_digit;
      std::cout << " \tInterpreted=" << interpreted_digit 
                << " \tExpected=" << input_value;
      // Print result messages to file
      outfile << "#" << std::dec << num_test_insts;
      outfile << ": \tTestInstance=" << std::hex << input_digit;
      outfile << " \tInterpreted=" << interpreted_digit 
              << " \tExpected=" << input_value;
      
      // Check for any difference between k-NN interpreted digit vs. expected digit
      if ( interpreted_digit != input_value ) {
        error++;
        std::cout << " \t[Mismatch!]";
        outfile << " \t[Mismatch!]";
      }
      
      std::cout << std::endl;
      outfile << std::endl;
    }   
    
    // Report overall error out of all testing instances
    std::cout << "Overall Error Rate = " << std::setprecision(3)
              << ( (double)error / num_test_insts ) * 100
              << "%" << std::endl;
    outfile << "Overall Error Rate = " << std::setprecision(3)
            << ( (double) error / num_test_insts ) * 100 
            << "%" << std::endl;
    
    // Close input file for the testing set
    myfile.close();
    
  }
  else
      std::cout << "Unable to open file for the testing set!" << std::endl; 
  
  // Close output file
  outfile.close();

  return 0;
}
