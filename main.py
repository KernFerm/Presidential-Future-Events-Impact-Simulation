import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm
import simpy

# Simulation parameters
years = 10
time_steps_per_year = 12
total_steps = years * time_steps_per_year

# User-defined initial values
initial_gdp_growth = float(input("Enter initial GDP growth rate (%): "))
initial_unemployment_rate = float(input("Enter initial unemployment rate (%): "))
initial_public_approval = float(input("Enter initial public approval rating (%): "))
initial_legislative_success = float(input("Enter initial legislative success rate (%): "))
initial_social_unrest = float(input("Enter initial social unrest index (0-100): "))
initial_immigration_rate = float(input("Enter initial immigration rate (%): "))

# Arrays to store simulation data
gdp_growth = np.zeros(total_steps)
unemployment_rate = np.zeros(total_steps)
public_approval = np.zeros(total_steps)
legislative_success = np.zeros(total_steps)
social_unrest = np.zeros(total_steps)
immigration_rate = np.zeros(total_steps)

# Initialize values
gdp_growth[0] = initial_gdp_growth
unemployment_rate[0] = initial_unemployment_rate
public_approval[0] = initial_public_approval
legislative_success[0] = initial_legislative_success
social_unrest[0] = initial_social_unrest
immigration_rate[0] = initial_immigration_rate

# Define the environment
env = simpy.Environment()

# Simulation loop
def simulation(env):
    for t in range(1, total_steps):
        # Update GDP growth
        gdp_growth[t] = gdp_growth[t-1] + norm.rvs(0, 0.5)  # Random fluctuation with normal distribution

        # Update unemployment rate
        unemployment_rate[t] = unemployment_rate[t-1] - 0.1 * gdp_growth[t] + 0.1 * immigration_rate[t-1]

        # Update public approval
        public_approval[t] = public_approval[t-1] + 0.2 * gdp_growth[t] - 0.3 * social_unrest[t-1] + norm.rvs(0, 2)

        # Update legislative success rate
        legislative_success[t] = legislative_success[t-1] + 0.1 * public_approval[t-1] - 0.05 * social_unrest[t-1] + norm.rvs(0, 5)

        # Update social unrest index
        social_unrest[t] = social_unrest[t-1] + 0.2 * (100 - public_approval[t-1]) - 0.1 * legislative_success[t-1] + norm.rvs(0, 3)

        # Update immigration rate
        immigration_rate[t] = immigration_rate[t-1] + 0.1 * (100 - unemployment_rate[t-1]) + norm.rvs(0, 0.1)

        # Wait for the next time step
        yield env.timeout(1)

# Run the simulation
env.process(simulation(env))
env.run(until=total_steps)

# Convert steps to years for plotting
years_array = np.arange(0, years, 1/time_steps_per_year)

# Plotting the results
plt.figure(figsize=(14, 8))

plt.subplot(2, 3, 1)
plt.plot(years_array, gdp_growth, label="GDP Growth (%)", color='b', marker='o')
plt.title("GDP Growth")
plt.xlabel("Year")
plt.ylabel("Growth Rate (%)")
plt.grid(True)

plt.subplot(2, 3, 2)
plt.plot(years_array, unemployment_rate, label="Unemployment Rate (%)", color='r', marker='o')
plt.title("Unemployment Rate")
plt.xlabel("Year")
plt.ylabel("Unemployment Rate (%)")
plt.grid(True)

plt.subplot(2, 3, 3)
plt.plot(years_array, public_approval, label="Public Approval (%)", color='g', marker='o')
plt.title("Public Approval")
plt.xlabel("Year")
plt.ylabel("Approval Rating (%)")
plt.grid(True)

plt.subplot(2, 3, 4)
plt.plot(years_array, legislative_success, label="Legislative Success Rate (%)", color='m', marker='o')
plt.title("Legislative Success")
plt.xlabel("Year")
plt.ylabel("Success Rate (%)")
plt.grid(True)

plt.subplot(2, 3, 5)
plt.plot(years_array, social_unrest, label="Social Unrest Index", color='orange', marker='o')
plt.title("Social Unrest")
plt.xlabel("Year")
plt.ylabel("Unrest Index (0-100)")
plt.grid(True)

plt.subplot(2, 3, 6)
plt.plot(years_array, immigration_rate, label="Immigration Rate (%)", color='purple', marker='o')
plt.title("Immigration Rate")
plt.xlabel("Year")
plt.ylabel("Rate (%)")
plt.grid(True)

plt.tight_layout()
plt.show()
