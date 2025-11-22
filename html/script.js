const container = document.getElementById('notify-container');
const notifySound = new Audio('sound/notification.ogg');  // ← chemin relatif depuis html/
notifySound.volume = 0.4;  // volume parfait (ajuste si tu veux)

window.addEventListener('message', function(event) {
    if (event.data.action === 'show') {
        const div = document.createElement('div');
        div.className = `notify ${event.data.type}`;
        div.innerHTML = `
            <div class="title">${event.data.title}</div>
            <div class="message">${event.data.message}</div>
        `;
        container.appendChild(div);

        // Joue le son à chaque notif
        notifySound.currentTime = 0;
        notifySound.play();

        // Auto-remove
        setTimeout(() => {
            div.style.animation = 'slideOut 0.5s forwards';
            setTimeout(() => div.remove(), 600);
        }, event.data.duration);
    }
});