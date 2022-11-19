# Fuction to check DataFrame information, data types and null values
def checking_dataframe(df):
    print("DataFrame Information \n")
    print(df.info())
    print("\nData Types\n")
    print(df.dtypes)
    print("\nNull Values\n")
    print(df.isnull().sum())

# Remove whitespace from entire DataFrame
def remove_whitespace(data):
    try:
        # remove spaces inside and outside of string
        data = "".join(data.split())

    except:
        pass
    return data

# Function to clean column names
def clean_columns(df):
    df.columns = df.columns.str.strip().str.title().str.replace(r'[^A-Za-z0-9 /-_]+','',regex=True).str.replace(" ","_").str.replace("-","_")