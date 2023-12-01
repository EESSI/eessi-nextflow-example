#!/usr/bin/env nextflow
nextflow.enable.dsl=2 

process sayHello {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x world!'
    """
}

process getVersionTensorFlow {
  output:
    stdout
  script:
    """
    python -c "import tensorflow; print(tensorflow.__version__)"
    """
}

workflow {
  Channel.of('Bonjour', 'Ciao', 'Hello', 'Hola') | sayHello | view
  getVersionTensorFlow | view
}
