import pandas as pd
import csv

def read_input_data(filepath, delimiter_in_file):

    '''This function reads input file from user.
    We can add checks for validating filepath & delimiter here but due to lack of time I was not ablr to add these checks '''

    input_data = pd.read_csv(filepath, delimiter=delimiter_in_file)
    return input_data


def calculate_hyptenuse(input_data):

    leg_a = input_data['LegA']
    leg_b = input_data['LegB']
    hypotenuse = ((leg_a ** 2) + (leg_b ** 2))** (0.5)
    hyp_data = input_data
    hyp_data['Hypotenuse'] = hypotenuse
    return hyp_data

def feet_to_meter (hyp_data):
    hyp_data_mt = hyp_data.multiply(0.3048)
    return hyp_data_mt

def sort_hyptenuse (hyp_data_mt):
    hyp_data_mt_sorted = hyp_data_mt.sort_values(by ='Hypotenuse' )
    return hyp_data_mt_sorted

def write_output_file(hyp_data_mt_sorted):

    hyp_data_mt_sorted.to_csv (r'output', sep = ' ', index = False, header=True)

def main():
     file_path = input('Please enter input file for lengths: ')
     delimeter = input('Please enter delimeter for your csv file: ')
     input_data = read_input_data(file_path,  delimeter)
     hyp_data = calculate_hyptenuse(input_data)
     hyp_data_mt = feet_to_meter (hyp_data)
     hyp_data_mt_sorted = sort_hyptenuse (hyp_data_mt)
     write_output_file(hyp_data_mt_sorted)



if __name__== "__main__":
  main()
