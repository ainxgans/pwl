<style>
    		.content {
			max-width: 100%;
			padding: 0 2%;
			margin: 0 auto;
			box-sizing: border-box;
		}
		h2 {
			font-size: 3vw;
			text-align: center;
		}
		p {
			font-size: 2vw;
			text-align: justify;
		}
		@media (max-width: 768px){
			h2 {
				font-size: 4vw;
			}
			p {
				font-size: 3vw
			}
		}
        .blink {
            animation: blinker 1s linear infinite;
        }
        @keyframes blinker {
    50% {
      opacity: 0;
    }
  }
</style>
<div class="content">
    <h2>Body</h2>
    <p>Ini adalah halaman dashboard perpustakaan</p>
    <marquee>Ini adalah halaman dashboard perpustakaan</marquee>
    <p class="blink">Ini adalah halaman dashboard perpustakaan</p>


</div>