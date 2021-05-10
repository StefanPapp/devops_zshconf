# developer stuff

# vi
alias vim=nvim

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
export JAVA_HOME='/Library/Java/JavaVirtualMachines/openjdk-14.0.2.jdk/Contents/Home'
# Scala
export PATH="${HOME}/.scalaenv/bin:${PATH}"
eval "$(scalaenv init -)"


# local zookeeper
export ZOOKEEPER_HOME="/opt/zookeeper"
export PATH=$ZOOKEEPER_HOME/bin:$PATH

#local spark
export SPARK_HOME="/opt/spark/"
export PATH=$SPARK_HOME/bin:$PATH

# local kafka
export PATH=$KAFKA_HOME/binexport PATH=$ZOOKEEPER_HOME/bin:$PATH
export KAFKA_HOME="/opt/kafka/"

alias ktl='kafka-topics.sh --list --zookeeper localhost:2181'

alias sparoo='cd $SPARK_HOME'
alias kafroo='cd $KAFKA_HOME'

# old
#alias pat='puppet agent -t --verbose'
