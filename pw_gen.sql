/******************************************************************************
Use the code below to generate password. 
Change @priv_key variable then execute line 6-9.
@priv_key must be less than 2147483647
******************************************************************************/
DECLARE @priv_key INT 	=    PRIVATE_KEY;
DECLARE @pub_key  INT 	=    (SELECT ABS(CHECKSUM(NewId())));
SELECT  @pub_key  			 [public key];
SELECT  @priv_key & @pub_key [password];

/******************************************************************************
Use the code below to get password from publlic key.
Replace @pubkey value with the public key generated before. 
Change @privatekey value to your private key then execute line 16-18
******************************************************************************/
DECLARE @pubkey     INT  	= PUBLIC_KEY;
DECLARE @privatekey INT     = PRIVATE_KEY;
SELECT  @pubkey & @privatekey [password];
