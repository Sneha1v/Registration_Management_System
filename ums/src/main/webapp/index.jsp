

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #89CFF0;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    h1 {
        font-size: 2em;
        color: #011F5B;
        margin-bottom: 20px;
        text-transform: uppercase;
        letter-spacing: 2px;
    }

    form {
        background: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 400px;
    }

    form input {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }

    form input:focus {
        border-color: #007bff;
        outline: none;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

    form button {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        background: #00CED1;
        color: white;
        font-size: 16px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    form button:hover {
        background: #0056b3;
    }

    a {
        display: inline-block;
        text-align: center;
        text-decoration: none;
        margin-bottom: 20px;
        width:100%;
        color: white;
        font-size: 16px;
    }

    a:hover {
        color: #0056b3;
    }
    
    button{
      width: 25%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        //background: #00CED1;
        background: #011F5B;
        color: white;
        font-size: 16px;
        cursor: pointer;
        transition: background 0.3s ease;
    }
</style>
</head>

<body>

<h1>Register Here</h1>
<form action="reg" method="post">
   <input type="text" name="id" placeholder="Enter ID" required>
   <input type="text" name="name" placeholder="Enter Name" required>
   <input type="email" name="email" placeholder="Enter Email" required>
   <input type="text" name="phone" placeholder="Enter Phone" required>
   <input type="password" name="password" placeholder="Enter Password" required>
   <button type="submit">SUBMIT</button>
</form>

<br>
<a href="allusers"><button>View Users</button></a>

</body>
</html>
