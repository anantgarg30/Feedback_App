# Feedback Application

A new Flutter application to take customer feedback for the services provided.


## Screenshots from the App

Home Screen           |  Last Page: Response1  | Last Page: Response2 |
:--------------------:|:--------------------:|:--------------------:|
![Screen One](https://github.com/anantgarg30/Feedback_App/blob/master/App%20Screenshots/Home%20Screen.jpeg)  |  ![Screen Two](https://github.com/anantgarg30/Feedback_App/blob/master/App%20Screenshots/Response1.jpeg) | ![Screen Three](https://github.com/anantgarg30/Feedback_App/blob/master/App%20Screenshots/Response2.jpeg)|


Sample Question1      |  Sample Question2    | Sample Question3     |
:--------------------:|:--------------------:|:--------------------:|
![Screen One](https://github.com/anantgarg30/Feedback_App/blob/master/App%20Screenshots/Sample%20Question%202.jpeg)  |  ![Screen Two](https://github.com/anantgarg30/Feedback_App/blob/master/App%20Screenshots/Sample%20Question%204.jpeg) | ![Screen Three](https://github.com/anantgarg30/Feedback_App/blob/master/App%20Screenshots/Sample%20Question%205.jpeg)|

## Problem Statement

Created a list of 6 questions with their answers as ratings out of 5.
The App accepts user input and accordingly outputs something on the last screen. At the end according to the total score calculated, show different colors on the screen as follows.

Score | Color of Text | Text Displayed

00 - 10 -> Red -> We are sorry for your inconvenience

11 - 20 -> Yellow -> Hope we serve you better next time

21 - 30 -> Green -> We hope you come back next time. 
The last screen has a trigger to reset the app to the starting question.

## Features

* Home Screen with a trigger button to start the feedback.
* Each Feedback question has a slider to provide the rating.
* Slider's active and inactive colors change with the change in ratings.
* Response Screen displays text according to the total rating and has a trigger to go back to the Home Screen.
