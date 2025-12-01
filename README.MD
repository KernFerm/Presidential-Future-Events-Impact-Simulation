## Support the Project ⭐

If you find this project useful, please give it a star! Your support is appreciated and helps keep the project growing. 🌟


# 🗳️ Presidential and Future Events Impact Simulation 🌍

This repository contains a **Python simulation model** that forecasts political, economic, and social factors over a specified period under a hypothetical presidency 🏛️. Users can input initial values for key variables, and the model simulates their progression through defined interactions and random variations 📊.

---

## ✨ Features

- **User-Defined Parameters**: Set initial values for GDP growth rate 📈, unemployment rate 📉, public approval rating 👍👎, legislative success rate 📜, social unrest index 🔥, and immigration rate 🛂.
- **Flexible Duration**: Simulate any number of years, from short-term to long-term projections 📆.
- **Detailed Interactions**: Model the relationships between variables to simulate realistic outcomes 🎯.
- **Enhanced Visualization**: Visualize the results with detailed plots 📊 for each variable over time.
- **Advanced Libraries**: Utilizes SciPy for scientific computing 🧑‍🔬 and SimPy for discrete-event simulation ⚙️ to provide robust and accurate modeling.
- **Simulation Logging**: Logs the simulation process for detailed tracking and analysis 📝.

---

# Join the discord if you need help 

[https://fnbubbles420.org/discordinvite](https://fnbubbles420.org/discordinvite)


### 🐍 Python Versions

To run the simulation, you'll need Python installed. Choose one of the following versions:

- [**Python 3.11.6**](https://github.com/KernFerm/Py3.11.6installer)
- [**Python 3.11.9**](https://github.com/KernFerm/Py3.11.9installer)
- [**Python 3.12.1**](https://github.com/KernFerm/Py3.12.1-installer-batch)

---

## ⚙️ Installation

1. **Clone the repository**:

    ```bash
    git clone https://github.com/kernferm/presidential-future-events-simulation.git
    cd presidential-future-events-simulation
    ```

2. **Run the batch script to install the required dependencies**:

    ```bash
    install_dependencies.bat
    ```

    This script will:
    - ✅ Check if Python is installed.
    - ✅ Check if pip is installed and attempt to install it if not.
    - ✅ Install the necessary Python packages: `numpy`, `matplotlib`, `scipy`, and `simpy`.
    - 📝 Log the installation process to `install_log.txt` for troubleshooting.

---

## 📝 Logging

The `install_dependencies.bat` script logs each step of the installation process to a file named `install_log.txt` 📄. This log includes:

- Python installation verification.
- Pip installation verification and installation (if needed).
- Installation of required Python packages.
- Success or failure messages for each step ✅❌.

The `main.py` simulation script logs the progression of the simulation to a file named `simulation_log.txt`. This log includes:

- Initial values for the simulation 🧐.
- Monthly updates for each time step (GDP growth, unemployment rate, public approval, legislative success, social unrest, and immigration rate) 🗓️.

---

## 🚀 Usage

1. **Run the simulation script**:

    ```bash
    python main.py
    ```

2. **Follow the prompts to input values** for the number of years and initial variables:

    ```plaintext
    Enter the number of years for the simulation: 
    Enter initial GDP growth rate (%): 
    Enter initial unemployment rate (%): 
    Enter initial public approval rating (%): 
    Enter initial legislative success rate (%): 
    Enter initial social unrest index (0-100): 
    Enter initial immigration rate (%): 
    ```

3. The simulation will run for the specified number of years (with monthly steps) and generate plots 📊 showing the progression of each variable over time.

---

## 📊 Example

After running the script and inputting initial values, the following plots will be generated:

- **GDP Growth (%)** 📈
- **Unemployment Rate (%)** 📉
- **Public Approval (%)** 👍👎
- **Legislative Success Rate (%)** 📜
- **Social Unrest Index** 🔥
- **Immigration Rate (%)** 🛂

These plots provide a visual representation of the simulated impacts of the hypothetical presidency on the various factors over the specified period 🏛️.

---

## 💡 Contributing

Contributions are welcome! If you have ideas for improving the simulation or adding new features, please open an issue or submit a pull request 🙌.

---

## 📜 License

This project is licensed under the [MIT License](https://github.com/KernFerm/Presidential-Future-Events-Impact-Simulation/blob/main/LICENSE) 📄. See the LICENSE file for details.

---

### 📝 Notes:

- **User-Defined Parameters**: Customize the simulation with your own initial values for key political, economic, and social factors.
- **Installation**: Provides step-by-step instructions for setting up the simulation.
- **Usage**: Explains how to run the simulation and input values.
- **Logging**: Describes the log files created during installation and simulation for troubleshooting.
