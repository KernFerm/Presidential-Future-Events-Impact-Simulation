# Presidential and Future Events Impact Simulation Model

This repository contains a Python simulation model that projects various political, economic, and social factors over a hypothetical 10-year period under a specified presidency. The model allows users to input initial values for several key variables and simulates their progression based on defined interactions and random fluctuations.

## Features

- **User-Defined Parameters:** Set initial values for GDP growth rate, unemployment rate, public approval rating, legislative success rate, social unrest index, and immigration rate.
- **Detailed Interactions:** Model the relationships between variables to simulate realistic outcomes.
- **Enhanced Visualization:** Visualize the results with detailed plots for each variable over time.

## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/kernferm/presidential-future-events-simulation.git
    cd presidential-future-events-simulation
    ```

2. Install the required dependencies:
    ```sh
    pip install numpy matplotlib
    ```

## Usage

1. Run the simulation script:
    ```sh
    python simulation.py
    ```

2. Follow the prompts to input initial values for the variables:
    ```
    Enter initial GDP growth rate (%): 
    Enter initial unemployment rate (%): 
    Enter initial public approval rating (%): 
    Enter initial legislative success rate (%): 
    Enter initial social unrest index (0-100): 
    Enter initial immigration rate (%): 
    ```

3. The simulation will run for 10 years and generate plots showing the progression of each variable.

## Example

After running the script and inputting the initial values, the following plots will be generated:

- **GDP Growth (%)**
- **Unemployment Rate (%)**
- **Public Approval (%)**
- **Legislative Success Rate (%)**
- **Social Unrest Index**
- **Immigration Rate (%)

These plots provide a visual representation of the simulated impacts of the hypothetical presidency on the various factors over the 10-year period.

## Contributing

Contributions are welcome! If you have ideas for improving the simulation or adding new features, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
