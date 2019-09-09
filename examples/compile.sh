rocketmq_path=$PWD/../rocketmq-cpp
export CGO_CFLAGS="-I$rocketmq_path"
export CGO_LDFLAGS="-L$rocketmq_path/so -lrocketmq -Wl,-rpath,$rocketmq_path/so"

echo $CGO_CFLAGS
echo $CGO_LDFLAGS
go build

