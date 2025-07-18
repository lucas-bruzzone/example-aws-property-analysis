def lambda_handler(event, context):
    """
    AWS Lambda function handler to process incoming events.
    
    Args:
        event (dict): The event data passed to the Lambda function.
        context (LambdaContext): The runtime information of the Lambda function.
    
    Returns:
        dict: A response indicating the result of the processing.
    """
    # Log the received event
    print("Received event:", event)
    
    # Process the event (this is a placeholder for actual logic)
    response = {
        "statusCode": 200,
        "body": "Event processed successfully"
    }
    
    return response