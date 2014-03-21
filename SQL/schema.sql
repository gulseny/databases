USE chat;
CREATE TABLE users (
  user_ID int NOT NULL,
  userName text,
  PRIMARY KEY (user_ID)
);
CREATE TABLE rooms (
  room_ID int NOT NULL,
  roomName text,
  PRIMARY KEY (room_ID)
);
CREATE TABLE messages (
  msg_ID int NOT NULL,
  user_ID int,
  room_ID int,
  content text,
  created_at timestamp,
  PRIMARY KEY (msg_ID),
  FOREIGN KEY (user_ID) REFERENCES users(user_ID),
  FOREIGN KEY (room_ID) REFERENCES rooms(room_ID)
);
