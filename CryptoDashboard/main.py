import streamlit as st
from snowflake.snowpark import Session


st.header("Welcome to Crypto Dashboard")

conn = st.connection("myconnections", type="snowflake")
session = conn.session()
#session = connections()
if session == True:
    st.success('This is a success message!', icon="✅")

else:
    st.error("Failed to connect")   