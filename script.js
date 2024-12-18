// Update current time
function updateCurrentTime() {
    const timeElement = document.getElementById('currentTime');
    const now = new Date();
    timeElement.textContent = now.toLocaleString();
}

// Set deployment time
function setDeploymentTime() {
    const deploymentElement = document.getElementById('deploymentTime');
    const deploymentTime = new Date();
    deploymentElement.textContent = deploymentTime.toLocaleString();
}

// Update host information
function updateHostInfo() {
    const hostElement = document.getElementById('hostInfo');
    hostElement.textContent = window.location.hostname || 'Local Development';
}

// Initialize the page
function init() {
    // Set initial values
    updateCurrentTime();
    setDeploymentTime();
    updateHostInfo();
    
    // Update current time every second
    setInterval(updateCurrentTime, 1000);
}

// Start when the page loads
document.addEventListener('DOMContentLoaded', init);
