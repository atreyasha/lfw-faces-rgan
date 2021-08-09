## RCGAN Model Performance Summary IV

### Table of Contents 

* [Generator](#Generator)
* [Discriminator](#Discriminator)
* [Stabilizing techniques](#Stabilizing-techniques)
* [Performance](#Performance)
    * [i. MNIST](#i-MNIST)
    * [ii. Fashion-MNIST](#ii-Fashion-MNIST)
* [Improvements](#Improvements)

### Generator

<p align="center">
<img src="/src/img/RCGAN/RCGAN_v4/gen.png" width="300">
</p>

### Discriminator

<p align="center">
<img src="/src/img/RCGAN/RCGAN_v4/dis.png" width="300">
</p>

### Stabilizing Techniques

1. Non-sparse activation, ie. LeakyReLU
2. Gaussian-smoothened real-data labels, ie. target labels follow a normal distribution of mean `0.9` and variance `0.005` and are re-sampled every epoch
3. Implementing two optimizers in GAN with differing learning rates; specifically where the generator has slightly lower learning rate than optimizer
4. Implementing spectral normalization for all significant convolutional and dense layers.
5. Auxiliary architecture helps to stabilize network further

### Performance

#### i. MNIST

<p align="center">
<img src="/src/img/RCGAN/RCGAN_v4/evolution_mnist.png" width="800">
</p>

<p align="center">
<img src="/src/img/RCGAN/RCGAN_v4/out_mnist.gif" width="650">
</p>

#### ii. Fashion-MNIST

<p align="center">
<img src="/src/img/RCGAN/RCGAN_v4/evolution_fashion.png" width="800">
</p>

<p align="center">
<img src="/src/img/RCGAN/RCGAN_v4/out_fashion.gif" width="650">
</p>

### Improvements

1. Acceptable tradeoff between generator quality and classification accuracy.

2. Next step would be to extend this network to a MIMIC-III task.
