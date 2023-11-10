import uuid
import requests
LEIA_LOGIN_OPENID_TOKEN_URL = ("https://auth.leialoft.com/auth/realms/leialoft/protocol/openid-connect/token")
correlation_id = str(uuid.uuid4())
token_response = requests.post(LEIA_LOGIN_OPENID_TOKEN_URL,data={"client_id":"xxx","client_secret":"xxx","grant_type": "client_credentials",},).json()
access_token = token_response["access_token"]
print(access_token)
