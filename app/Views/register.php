<div class="hero min-h-screen bg-base-200 ">
  <div class="hero-content text-center">
    <div class="max-w-md">
      <h1 class="text-5xl font-bold">Silahkan register</h1>
      <form action="/register/tambah" method="post" id="signup-form">
        <!-- <?php csrf_field() ?> -->
      <input type="text" class="input w-full max-w-xs mt-2" placeholder="Nama Lengkap" name="nama" id="nama">
      <input type="email" class="input w-full max-w-xs mt-2" placeholder="Email" name="email" id="email">
      <input type="password" class="input w-full max-w-xs mt-2" placeholder="Password" name="password" id="password">
      <label class="label cursor-pointer w-full mt-2">
    <span class="label-text">Syarat & Ketentuan</span> 
    <input type="checkbox" class="checkbox checkbox-primary" id="aggre"/>
  </label>
      <button type="submit" class="w-full max-w-xs mt-2 btn bg-slate-800">Register</button>
      </form>
    </div>
  </div>
</div>
<script>
    const signupForm = document.getElementById('signup-form');
    signupForm.addEventListener('submit', function(event){
        const nama = document.getElementById('nama');
        const email = document.getElementById('email');
        const password = document.getElementById('password');
        const aggre = document.getElementById('aggre');

        if (!isValidName(nama.value)) {
            alert('Nama lengkap harus diisi')
            nama.focus();
            event.preventDefault();
            return false;
        }
        if (!isValidEmail(email.value)) {
            alert('Email tidak valid')
            email.focus();
            event.preventDefault();
            return false;
        }
        if (!isValidPassword(password.value)) {
            alert('Password minimal 8 karakter')
            password.focus();
            event.preventDefault();
            return false;
        }
        if (!aggre.checked) {
            alert('Anda harus menyetujui syarat dan ketentuan')
            event.preventDefault();
            return false;
        }
        function isValidName(nama) {
            return nama.length >= 3;
        }
        function isValidEmail(email) {
            const emailregex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return emailregex.test(email)
        }
        function isValidPassword(password) {
            return password.length >= 8;
        }

    })
</script>