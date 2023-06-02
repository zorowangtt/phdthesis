import numpy as np
import matplotlib.pyplot as plt

# Data
years = [2023, 2022, 2021, 2020, 2019, 2018]
total_entries = [205451, 199674, 185389, 172807, 158820, 147333]
structures_released = [5777, 14285, 12582, 13987, 11487, 11158]
other_data = [total_entries[i] - structures_released[i] for i in range(len(total_entries))]

# Bar width
bar_width = 0.25

# Positions of the bars on the x-axis
r = np.arange(len(years))

# Plotting
plt.figure(figsize=(10, 6))
plt.bar(r, total_entries, color='skyblue', width=bar_width, edgecolor='white', label='Total Entries')
plt.bar(r, structures_released, color='orange', width=bar_width, edgecolor='white', label='Structures Released')
plt.bar(r, other_data, color='green', width=bar_width, edgecolor='white', label='Other Data')

# Labels and titles
plt.xlabel('Year')
plt.ylabel('Number of Entries')
plt.title('Protein Entries and Structures Released Annually')

# Ticks
plt.xticks(r, years)

# Legend
plt.legend()

# Display the plot
plt.show()
