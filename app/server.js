const express = require('express');
const app = express();
const PORT = process.env.PORT || 8000;
app.get('/', (req, res) => {
res.send('Hello from the Node.js app!! You have successfully executed HELM pipeline');
});
app.listen(PORT, () => {
console.log(`Server running on port ${PORT}`);
});
