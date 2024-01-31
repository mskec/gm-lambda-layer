# gm-lambda-layer

Example how to build and publish your own [GraphicsMagick](http://www.graphicsmagick.org/) lambda layer.

## How to use

First you need to build the layer. You can do it by running `build.sh` script. It will create `gm-layer-<version>.zip` file in the root directory. Note that the build can take a while.

Then you need to publish the layer. You can do it by running `publish.sh` script. It will create new lambda layer. For this you need to have [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) installed and configured with your account.

## Lambda Test

You can use the test lambda function in the `function` directory to test your layer.

First you need to install dependencies by running `npm install` in the `function` directory.

Then pack the function by running `pack-function.sh`, it will simply create `function.zip` file in the root directory.

You can create new lambda function using the AWS Console and upload the `function.zip` file.

After creating the function you must add your `graphicsmagick` lambda layer to it. You can follow [the official guide](https://docs.aws.amazon.com/lambda/latest/dg/adding-layers.html).

[pdf2pic](https://npmjs.com/package/pdf2pic) library requires ghostscript binaries as well. Add the community driven [Ghostscript lambda layer](https://github.com/shelfio/ghostscript-lambda-layer).

```
arn:aws:lambda:<YOUR REGION>:764866452798:layer:ghostscript:<VERSION>
```

Run your pdf2pic-demo lambda function by using the test feature in the AWS console. Test event can be anything, it's not consumed.

If the layer works, you will see status code `200` with `bufferLength > 0` and base64 encoded image in the `body` field. 

## License

MIT
