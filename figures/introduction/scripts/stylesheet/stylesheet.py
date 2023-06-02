from contextlib import AbstractContextManager

import matplotlib.pyplot as plt


class PaperMatplotlibStylesheet(AbstractContextManager):
    # Write configuration in A-Z
    style = {
        # Figure
        "figure.dpi": 600,
        # Font
        "font.family": "serif",
        "font.serif": [
            "Times",
            "Times New Roman",
        ]
        + plt.rcParams["font.serif"],
        # Math
        "mathtext.fontset": "stix",
        # Savefig
        "savefig.bbox": "tight",
        # "font.size": 20
    }

    def __init__(self):
        pass

    def __enter__(self):
        self.context = plt.style.context(self.style)
        return self.context.__enter__()

    def __exit__(self, *args):
        self.context.__exit__(*args)
