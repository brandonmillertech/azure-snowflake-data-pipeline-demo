"""
Data Platform Fundamentals Exploration Script (DP-900 Module)
"""
import pandas as pd

def load_sample_dataset():
    data = {
        "Metric": ["Storage", "Compute", "Throughput"],
        "Value": [100, 4, 500]
    }
    df = pd.DataFrame(data)
    return df

if __name__ == "__main__":
    df = load_sample_dataset()
    print(df)
