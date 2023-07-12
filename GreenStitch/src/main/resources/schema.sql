CREATE TABLE role (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL
);

CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  CONSTRAINT unique_username UNIQUE (username),
  CONSTRAINT unique_email UNIQUE (email)
);

CREATE TABLE user_role (
  user_id INT,
  role_id INT,
  FOREIGN KEY (user_id) REFERENCES user(id),
  FOREIGN KEY (role_id) REFERENCES role(id),
  PRIMARY KEY (user_id, role_id)
);
