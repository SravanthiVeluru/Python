import streamlit as st
from utils.load_data import load_data

st.set_page_config(page_title="Home Credit Dashboard", page_icon="🛍️", layout="wide")

st.title("🛍️ HOME CREDIT Dashboard")

st.markdown("""
Welcome to the ** Home Credit Dashboard** built with **Streamlit**.  
Use the sidebar to navigate between different analysis modules:
- 📊 Overview & Data Quality  
- Target & Risk Segmentation
-  Demographics & Household Profile  
-  Financial Health & Affordability 
-  Correlations,Drivers & Interactive Slice-and-Dice
""")

st.markdown("---")
st.subheader("Upload / Use Default Dataset")

uploaded_file = st.file_uploader("Upload your Home Credit CSV file", type=[" csv", "xls", "xlsx  "])
if uploaded_file:
    df = load_data()
else:
    df = load_data()

st.dataframe(df.head(10))
