//import cors from 'cors';
import 'dotenv/config'
import express from 'express';
import bodyParser from 'body-parser';

(async () => {

    const app = express();
    const port = process.env.PORT || 8000;

    app.use(bodyParser.json());

    // Root URI call
    app.get('/', async (req, res) => {
        res.send({ message: "Hello World", status: "ok" });
    });


    // Start the Server
    app.listen(port, () => {
        console.log(`server running on port ${port}`);
        console.log(`press CTRL+C to stop server`);
    });

})();
