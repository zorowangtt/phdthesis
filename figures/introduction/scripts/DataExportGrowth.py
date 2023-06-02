import pandas as pd 
import matplotlib.pyplot as plt
from stylesheet.stylesheet import PaperMatplotlibStylesheet
import numpy as np

data = pd.read_csv('figures/introduction/scripts/DataExportGrowth.csv', header=0, names=['year', 'total', 'annual'])
data.sort_values(by=['year'], ascending=True, inplace=True)
# print(data)

r = np.arange(len(data))

with PaperMatplotlibStylesheet():
    
    
    plt.figure(figsize=(10, 4))

    # plt.bar(data["year"], data['annual'], edgecolor="white",linewidth=0.7, color='blue')
    plt.bar(data["year"], data['total'], edgecolor="white", linewidth=0.7, color='blue')

    plt.xlabel("Year")
    plt.ylabel("Number")
    plt.title("Overall Growth of Protein Structures Released Per Year")
    # plt.xticks(r, data['year'], rotation=90, ha='center')
    plt.xticks(rotation=90)
    plt.tight_layout()
    # plt.show()

    
    
    plt.savefig("figures/introduction/proteinnumber.jpeg", bbox_inches="tight", dpi=600)





