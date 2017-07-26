# docker-node-runner

This is a very simple docker image with node-6.2.1, the process manager installed.

clone project :

    git clone https://github.com/imwalson/docker-node-runner.git

build the image :

    docker build -t docker-node-runner .

The image will use `/app` folder as the place for the source code and the working directory, so you should provide your app as a volume, i.e;

    -v /path/to/app/source:/app

#### notice

As the image use `npm start` command as the start command, you `package.json` should contain `start` script,like this:

    "scripts": {
        "start": "node index.js"
    }
   
The container exposes 8000 so you can bind to them.

So a complete command for running a node.js application could be;

    docker run -d -p 8000:8000 -v /path/to/app/source:/app docker-node-runner
