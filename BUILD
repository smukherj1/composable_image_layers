load("@io_bazel_rules_docker//container:layer.bzl", 
     "container_layer"
)
load("@io_bazel_rules_docker//container:image.bzl", "container_image")
load("@io_bazel_rules_docker//container:push.bzl", "container_push")

container_layer(
  name="base-layer",
  tars=["base.tar"]
)

container_layer(
  name="bazel-layer",
  tars=["bazel_added.tar"]
)

container_layer(
  name="docker-layer",
  tars=["docker_added.tar", 
        "docker_common.tar"]
)

container_image(
  name="image-bazel",
  layers=[":base-layer", ":bazel-layer"]
)

container_image(
  name="image-docker",
  layers=[":base-layer", ":docker-layer"]
)

container_image(
  name="image-docker-bazel",
  layers=[":base-layer", ":docker-layer", ":bazel-layer"]
)

container_push(
  name="image-bazel-push",
  image=":image-bazel",
  format="Docker",
  registry="gcr.io",
  repository="asci-toolchain/suvanjan-test/image-bazel",
  tag="experimental"
)

container_push(
  name="image-docker-push",
  image=":image-docker",
  format="Docker",
  registry="gcr.io",
  repository="asci-toolchain/suvanjan-test/image-docker",
  tag="experimental"
)

container_push(
  name="image-docker-bazel-push",
  image=":image-docker-bazel",
  format="Docker",
  registry="gcr.io",
  repository="asci-toolchain/suvanjan-test/image-docker-bazel",
  tag="experimental"
)
