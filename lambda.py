# python code for lambda function
import boto3  # library for aws services


def lambda_handler(event, context):
    from_email = "mennahasan137@gmail.com"
    client = boto3.client("ses")

    # message body
    body_html = f"""<html>
        <head></head>
        <body>
          <h2>Email from AWS SES!</h2>
          <br/>
          <p>This was sent from a Python Lambda using boto3</p> 
        </body>
        </html>
                    """
    # mail body and subect
    email_message = {
        "Body": {
            "Html": {
                "Charset": "utf-8",
                "Data": body_html,
            },
        },
        "Subject": {
            # The character encoding for the email.
            "Charset": "utf-8",
            "Data": "terraform state changed",
        },
    }

    # send the mail
    ses_response = client.send_email(
        Destination={
            "ToAddresses": ["mennahasan137@gmail.com"],
        },
        Message=email_message,
        Source=from_email,
    )

    # print the response
    print(f"ses response id received: {ses_response['MessageId']}.")