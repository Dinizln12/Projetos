<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LoveLink: Seu Presente Inesquecível</title>
    <link rel="icon" href="data:image/svg+xml,<svg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 24 24\' width=\'24\' height=\'24\'><path d=\'M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z\' fill=\'%E82B4B\'/></svg>">
    <style>
        body{font-family:'Arial',sans-serif;background:linear-gradient(135deg,#fbd3c1,#f3a7b2);color:#333;text-align:center;padding:0;margin:0;overflow-x:hidden;position:relative}
        header{background-color:#ff6f61;color:#fff;padding:20px;position:fixed;width:100%;top:0;left:0;box-shadow:0 4px 10px rgba(0,0,0,0.2);z-index:1000}
        header h1{margin:0;font-size:2.5em;font-weight:bold}
        .container{max-width:1200px;margin:120px auto 20px auto;display:flex;justify-content:space-between;gap:20px}
        .main-content{flex:2;background:#fff;padding:30px;border-radius:15px;box-shadow:0 4px 20px rgba(0,0,0,0.2);position:relative;z-index:1}
        .phone-container{flex:1;width:375px;height:667px;border:16px solid #000;border-radius:36px;box-shadow:0 0 20px rgba(0,0,0,0.5);position:relative;overflow:hidden;background:#fff;display:flex;flex-direction:column}
        .phone-screen{width:100%;height:100%;overflow:hidden;display:flex;flex-direction:column;padding:20px;box-sizing:border-box;background:#f9f9f9;color:#333}
        .phone-header{background:#e0e0e0;display:flex;justify-content:space-between;align-items:center;padding:10px;border-radius:12px;margin-bottom:10px}
        .phone-header .title{font-size:1em}
        .phone-header .icons{font-size:1em}
        .phone-header .icons span{margin:0 5px;cursor:pointer}
        .phone-header .icons span.minimize:before{content:''}
        .phone-header .icons span.square:before{content:''}
        .phone-header .icons span.close:before{content:''}
        .photo-preview{position:relative;width:100%;height:350px;overflow:hidden;background:#ddd;border-radius:12px;box-shadow:0 0 10px rgba(0,0,0,0.2)}
        .carousel-wrapper{position:relative;width:100%;height:100%;overflow:hidden}
        .carousel{display:flex;width:400%;height:100%;transition:transform 0.5s ease-in-out}
        .carousel img{width:25%;height:100%;object-fit:cover;border-radius:12px}
        .carousel-indicators{position:absolute;bottom:10px;left:50%;transform:translateX(-50%);display:flex;gap:5px}
        .carousel-indicators span{width:12px;height:12px;background-color:#ddd;border-radius:50%;cursor:pointer;opacity:0.6}
        .carousel-indicators span.active{opacity:1;background-color:#ff6f61}
        .phone-screen h2{font-size:0.8em;margin-bottom:5px}
        .section{margin:5px 0}
        .photo-upload input,.names-input input,.date-input input,.text-input textarea{display:block;margin:10px auto;padding:10px;border:2px solid #ff6f61;border-radius:10px;background-color:#fff;font-size:0.9em;color:#333}
        .names-input input,.date-input input,.text-input textarea{width:100%;max-width:280px;margin:5px auto;box-sizing:border-box}
        .text-input textarea{height:80px;resize:none}
        .submit-btn{background-color:#ff6f61;color:#fff;padding:15px 40px;border:none;border-radius:12px;cursor:pointer;font-size:18px;font-weight:bold;transition:background-color 0.3s;text-decoration:none}
        .submit-btn:hover{background-color:#e64a19}
        .payment-info{margin-top:20px}
        footer{background-color:#ff6f61;color:#fff;padding:15px;position:fixed;width:100%;bottom:0;left:0;box-shadow:0 -4px 10px rgba(0,0,0,0.2);z-index:1000}
        footer p{margin:0}
        @media (max-width:768px){header h1{font-size:2em}.container{flex-direction:column;gap:10px}.phone-container{width:100%;height:auto;border:8px solid #000;border-radius:20px}.photo-preview img{max-width:50px}.names-input input,.date-input input,.text-input textarea{max-width:100%}}
        .falling-heart{position:absolute;font-size:2em;animation:fall 10s linear infinite;opacity:0;z-index:0}
        @keyframes fall{0%{transform:translateY(-100vh);opacity:1}100%{transform:translateY(100vh);opacity:0}}
    </style>
</head>
<body>
    <header>
        <h1>LoveLink</h1>
    </header>
    <div class="container">
        <div class="main-content">
            <h1>Seu Presente Inesquecível</h1>
            <div class="section names-input">
                <h2>Qual o nome do casal?</h2>
                <input type="text" id="coupleNames" placeholder="Nome do casal">
            </div>
            <div class="section date-input">
                <h2>Quando começou o relacionamento?</h2>
                <input type="date" id="startDate">
            </div>
            <div class="section photo-upload">
                <h2>Envie até 4 fotos do casal</h2>
                <input type="file" id="photoUpload" accept="image/*" multiple onchange="previewPhotos(event)">
            </div>
            <div class="section text-input">
                <h2>Escreva uma mensagem especial</h2>
                <textarea id="romanticText" placeholder="Texto romântico"></textarea>
            </div>
            <div class="section payment-info">
                <h2></h2>
                <a href="Untitled-teste1.3.5.html" class="submit-btn" target="_blank">Clique para criar</a>
            </div>
        </div>
        <div class="phone-container">
            <div class="phone-screen">
                <div class="phone-header">
                    <div class="title">www.LoveLink.com</div>
                    <div class="icons">
                        <span class="minimize"></span>
                        <span class="square"></span>
                        <span class="close"></span>
                    </div>
                </div>
                <div class="photo-preview">
                    <div class="carousel-wrapper">
                        <div class="carousel">
                            <img id="phonePreview1" src="https://via.placeholder.com/800x600?text=Foto+1" alt="Prévia da Foto 1">
                            <img id="phonePreview2" src="https://via.placeholder.com/800x600?text=Foto+2" alt="Prévia da Foto 2">
                            <img id="phonePreview3" src="https://via.placeholder.com/800x600?text=Foto+3" alt="Prévia da Foto 3">
                            <img id="phonePreview4" src="https://via.placeholder.com/800x600?text=Foto+4" alt="Prévia da Foto 4">
                        </div>
                    </div>
                    <div class="carousel-indicators">
                        <span class="active" onclick="goToSlide(0)"></span>
                        <span onclick="goToSlide(1)"></span>
                        <span onclick="goToSlide(2)"></span>
                        <span onclick="goToSlide(3)"></span>
                    </div>
                </div>
                <div class="section names-input">
                    <input type="text" id="phoneCoupleNames" placeholder="Nome do casal" readonly>
                </div>
                <div class="section">
                    <p id="phoneTimeTogether" style="font-size:0.8em;">00 dias, 00 horas, 00 minutos, 00 segundos</p>
                </div>
                <div class="section text-input">
                    <textarea id="phoneRomanticText" placeholder="Texto romântico" readonly></textarea>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 LoveLink. Todos os direitos reservados.</p>
    </footer>
    <script>
        function createFallingHearts() {
            const emoji = '💌';
            for (let i = 0; i < 20; i++) {
                const heart = document.createElement('div');
                heart.classList.add('falling-heart');
                heart.style.left = `${Math.random() * 100}vw`;
                heart.style.animationDuration = `${Math.random() * 5 + 5}s`;
                heart.textContent = emoji;
                document.body.appendChild(heart);
            }
        }
        createFallingHearts();
        
        function startChronometer() {
            const startDateInput = document.getElementById('startDate');
            const phoneTimeTogether = document.getElementById('phoneTimeTogether');
            
            function updateTime() {
                const startDate = new Date(startDateInput.value);
                const now = new Date();
                const diff = now - startDate;
                
                if (isNaN(diff)) return;
                
                const seconds = Math.floor(diff / 1000);
                const minutes = Math.floor(seconds / 60);
                const hours = Math.floor(minutes / 60);
                const days = Math.floor(hours / 24);
                
                const displaySeconds = seconds % 60;
                const displayMinutes = minutes % 60;
                const displayHours = hours % 24;
                
                const timeText = `${days} dias, ${displayHours} horas, ${displayMinutes} minutos, ${displaySeconds} segundos`;
                
                phoneTimeTogether.textContent = timeText;
            }
            
            setInterval(updateTime, 1000);
        }
        
        function previewPhotos(event) {
            const files = event.target.files;
            const previews = [
                document.getElementById('phonePreview1'),
                document.getElementById('phonePreview2'),
                document.getElementById('phonePreview3'),
                document.getElementById('phonePreview4')
            ];
            previews.forEach(img => img.src = '');
            
            Array.from(files).slice(0, 4).forEach((file, index) => {
                const reader = new FileReader();
                reader.onload = function(e) {
                    previews[index].src = e.target.result;
                }
                reader.readAsDataURL(file);
            });
            
            goToSlide(0);
        }
        
        let currentSlide = 0;
        
        function goToSlide(slideIndex) {
            const carousel = document.querySelector('.carousel');
            const indicators = document.querySelectorAll('.carousel-indicators span');
            const offset = -slideIndex * 100;
            carousel.style.transform = `translateX(${offset}%)`;
            indicators.forEach((indicator, i) => {
                indicator.classList.toggle('active', i === slideIndex);
            });
            currentSlide = slideIndex;
        }
        
        document.querySelectorAll('.carousel-indicators span').forEach((indicator, index) => {
            indicator.addEventListener('click', () => {
                goToSlide(index);
            });
        });
        
        document.getElementById('coupleNames').addEventListener('input', function() {
            document.getElementById('phoneCoupleNames').value = this.value;
        });
        
        document.getElementById('romanticText').addEventListener('input', function() {
            document.getElementById('phoneRomanticText').value = this.value;
        });
        
        startChronometer();
    </script>
</body>
</html>
