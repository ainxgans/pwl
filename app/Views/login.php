<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.5/dist/full.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>

<div class="grid place-content-center pt-6">
<div class="card w-96 bg-base-100 shadow-xl">
  <div class="card-body">
    <h2 class="card-title">Login</h2>
    <form id="login-form" method="POST" action="login/authenticate">
    <label for="email">Email</label>
    <input type="email" class="input w-full max-w-xs border-2 border-purple-600" id="email" name="email">
    <label for="password" >Password</label>
    <input type="password" id="password" class="input w-full max-w-xs border-2 border-purple-600" name="password">
    <button type="submit" class="btn btn-primary mt-6 bg-purple-600">Login</button>
    </form>
  </div>
</div>
</div>

<!-- 
<form id="login-form">
    <label for="email">Email</label>
    <input type="email" class="input w-full max-w-xs" id="email">
    <label for="password" >Password</label>
    <input type="password" id="password" class="input w-full max-w-xs">
    <button type="submit">Login</button>
</form> -->
<script>
            const loginForm = document.getElementById('login-form')
        loginForm.addEventListener('submit', async (e) => {
            e.preventDefault()
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;

            const response = await fetch('/login/authenticate/',{
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    email, password
                }) 
            });
            if (response.ok) {
                window.location.href = '/dashboard'
            }else {
                console.log('Error');
            }
        })
</script>
</body>
</html>