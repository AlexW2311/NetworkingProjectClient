# General Application Client Repository

## General Chat - Client  

## Purpose  
The **General Chat** client provides a lightweight, interactive chat experience inspired by multiplayer game chatrooms. It allows players to move in a 2D space, communicate in real-time, and see other players represented by customizable sprites. The goal is to create a simple yet engaging social experience that can be expanded in the future.  

## Overview  
The client application for **General Chat**, a 2D multiplayer chatroom built in GameMaker Studio 2. Players can move around a virtual space, send messages, and see other players represented by 2D sprites.  

## Features  
- Connects to the server via TCP/IP  
- Sends and receives chat messages in real-time  
- Player movement with directional sprite updates  
- Synchronizes player positions and sprites with the server  

## Networking  
- Uses buffers to serialize and deserialize data (e.g., player position, chat messages, sprite direction)  
- Communicates with the server via a structured message protocol  
- Updates player state based on network packets  

## Future Plans  
- Implement character customization  
- Improve sprite synchronization  
- Release on mobile platforms  

## Requirements  
- GameMaker Studio 2  
- A running instance of the **General Chat Server**  


### Clone the Repository
```sh
git clone https://github.com/yourusername/project-name.git
cd project-name
