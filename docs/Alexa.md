# Alexa

## Create a Skill

### Simple skill
Use the [Amazon Developer Console](https://developer.amazon.com/alexa/console/ask) to create a simple new skill.

1. You will need to enter a Skill Name in my case I am using "ModelRailway"
2. Choose Custom as the model for the skill.
3. For the backend resource choose "Provision your own"

Select the **Create Skill** button

You will now be requested to add a template, select "Start from Scratch" and press the **Choose** button

Alexa will go away and start builfing your skill model.

### Change the Invocation
The skill will be created with a Skill Invocation Name of "change me", you will need to change this to something logical, in my case "model railway". After changing this you will need to **Save Model** and then **Build Model**

### Quick Test
In the [Amazon Developer Console](https://developer.amazon.com/alexa/console/ask) you need to go to the Test page and change the "Skill testing is enabled in:" to **Development**

you can now try to use an Amazon Alexa or use the Alexa Simulator. Since there is no code set up you will probably get some uninspiring output, but try "Alexa, Start model railway"

## Connect to AWS Lambda
In the [Amazon Developer Console](https://developer.amazon.com/alexa/console/ask) On the **Build** page, navigate to the Assets menu, and choose Endpoint. There you can find your Skill Id which you will need a little later.

In your [AWS Lambda account](https://eu-west-2.console.aws.amazon.com/lambda/home) create a function using the language you prefer. In my case Python. 

Now you need to Enter the **configuration** page and choose the **Triggers** menu. and you need to add the trigger "Alexa Skills Kit" , it will require the Skill Id you collected earlier.

Record the ARN of the lambda function you just created, and return to the [Amazon Developer Console](https://developer.amazon.com/alexa/console/ask) Assets Menu, Endpoints. and enter the ARN for the Default Region.

Using Amazons demo I have 3 files which need to be packaged and uploaded into AWS Lambda, before anything will work. Please download these files and package them up for use in lambda.



Follow the instructions to create a [zip package](https://github.com/sfawcett123/aws_k8_training/blob/main/docs/howto/lambda_pkg.md)

