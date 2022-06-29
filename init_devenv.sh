# developer stuff

# Python
# eval "$(pyenv init -)"
export PYTHON_BIN=python3
export PYSPARK_PYTHON=python3
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
# export PATH="${HOME}/.pyenv/bin:${PATH}"

# Java
export PATH="${HOME}/.jenv/bin:${PATH}"
eval "$(jenv init -)"
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk-18.0.1.1.jdk/Contents/Home'
# Scala
#export PATH="${HOME}/.scalaenv/bin:${PATH}"
#eval "$(scalaenv init -)"

#local spark
export SPARK_HOME="/opt/spark/"
export PATH=$SPARK_HOME/bin:$PATH

# local kafka
export KAFKA_HOME="/opt/kafka/"

alias ktl='kafka-topics.sh --list --zookeeper localhost:2181'

