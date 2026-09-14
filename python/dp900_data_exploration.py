"""
Data Platform Fundamentals Exploration Script (DP-900 Module)
Performs basic dataset shape inspection and summary statistics.
"""

import pandas as pd
import numpy as np

def run_exploratory_analysis() -> pd.DataFrame:
    np.random.seed(42)
    sample_records = {
        "TransactionID": [f"TXN-{1000 + i}" for i in range(10)],
        "Region": np.random.choice(["East US", "West Europe", "Southeast Asia"], size=10),
        "IngestionLatencySec": np.random.uniform(1.2, 8.5, size=10).round(2),
        "PayloadSizeMB": np.random.randint(15, 250, size=10)
    }
    df = pd.DataFrame(sample_records)
    return df

if __name__ == "__main__":
    df_result = run_exploratory_analysis()
    print("--- Sample Ingestion Telemetry Data ---")
    print(df_result)
    print("\n--- Summary Statistics ---")
    print(df_result.describe())
