"""Functions used in preparing Guido's gorgeous lasagna."""

EXPECTED_BAKE_TIME = 40     # Expected time required to bake the lasagna in minutes. 
PREPARATION_TIME = 2        # Time required to prep each layer of lasagna in minutes.

def bake_time_remaining(elapsed_bake_time):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """

    return EXPECTED_BAKE_TIME - elapsed_bake_time

def preparation_time_in_minutes(number_of_layers):
    """Calculate the preparation time in minutes.
    
    :param number_of_layers: int - number of layers for the lasagna.
    :return: int - preparation time (in minutes), 2 minutes per layer of the lasagna.

    Function takes one integer representing the number of lasagna layers and calculated the prepatation time
    in minutes based on PREPARATION_TIME (in minutes) of prep required for each layer of lasagna.
    """

    return number_of_layers * PREPARATION_TIME

def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate the elasped time in minutes.
    
    :param number_of_layers: int - number of layers for the lasagna.
    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - total elapsed time (in minutes), calculated from the combined prep time and current time in oven.
    
    This function takes two integers representing the number of lasagna layers and the
    time already spent baking and calculates the total elapsed minutes spent cooking the
    lasagna.
    """

    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time 