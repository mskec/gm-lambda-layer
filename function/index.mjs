import { fromPath } from 'pdf2pic';

export const handler = async (event) => {
  const { buffer } = await fromPath('./pdf1.pdf', { format: 'png' })(1, { responseType: 'buffer' });

  return {
    statusCode: buffer.length === 0 ? 500 : 200,
    bufferLength: buffer.length,
    body: buffer.toString('base64'),
  };
};
