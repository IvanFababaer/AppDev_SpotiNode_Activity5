const express = require('express');
const multer = require('multer');
const path = require('path');
const db = require('./db'); // Import the MySQL database connection

const app = express();
const PORT = process.env.PORT || 3000;

// Set up middleware
app.use(express.static('public'));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Set up multer for file uploads
const storage = multer.diskStorage({
    destination: function(req, file, cb) {
        cb(null, 'public/uploads/');
    },
    filename: function(req, file, cb) {
        cb(null, Date.now() + path.extname(file.originalname));
    }
});
const upload = multer({ storage: storage });

// Route to render the main page
app.get('/', async (req, res) => {
    const [musicList] = await db.query('SELECT * FROM music'); // Fetch music data from the database
    res.render('index', { musicList: musicList });
});

// Route to handle music uploads
app.post('/upload', upload.single('musicFile'), async (req, res) => {
    const musicData = {
        title: req.body.title,
        artist: req.body.artist,
        file_path: `uploads/${req.file.filename}`
    };
    await db.query('INSERT INTO music (title, artist, file_path) VALUES (?, ?, ?)', 
        [musicData.title, musicData.artist, musicData.file_path]); // Save the music data to the database
    res.redirect('/');
});

// Route to render the music page
app.get('/music', async (req, res) => {
    const [musicList] = await db.query('SELECT * FROM music'); // Fetch music data from the database
    res.render('music', { musicList: musicList });
});


// Start the server on localhost
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
