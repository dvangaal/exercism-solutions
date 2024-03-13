defmodule Lasagna do
  def expected_minutes_in_oven(), do: 40

  def remaining_minutes_in_oven(time_in_oven) do
    Lasagna.expected_minutes_in_oven() - time_in_oven
  end
  
  def preparation_time_in_minutes(number_of_layers) do
    number_of_layers * 2
  end
  
  def total_time_in_minutes(number_of_layers, time_in_oven) do
    Lasagna.preparation_time_in_minutes(number_of_layers) + time_in_oven
  end
  
  def alarm() do
    # returns a message indicating that the lasagna is ready to eat.
    "Ding!"
  end
end
