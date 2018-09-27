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

########## Build rules to create containers with
# 1. bazel
# 2. gradle
# 3. gcloud
#################################################

container_layer(
  name="base-layer2",
  tars=["layer-0-0_base.tar"]
)

container_layer(
  name="bazel-layer2",
  tars=["layer-1-1_bazel.tar"]
)

container_layer(
  name="gradle-layer2",
  tars=["layer-2-2_gradle.tar"]
)

container_layer(
  name="gcloud-layer2",
  tars=["layer-3_gcloud.tar"]
)

container_layer(
  name="cfl-layer2",
  tars=["layer-4-cfl.tar"]
)

container_image(
  name="image-gcloud2",
  layers=[":base-layer2",
          ":gcloud-layer2",
          ":cfl-layer2"
  ]
)

container_push(
  name="image-gcloud2-push",
  image=":image-gcloud2",
  format="Docker",
  registry="gcr.io",
  repository="asci-toolchain/suvanjan-test/image-gcloud2",
  tag="experimental"
)


container_image(
  name="image-bazel2",
  layers=[":base-layer2",
          ":bazel-layer2",
          ":cfl-layer2"
  ]
)

container_push(
  name="image-bazel2-push",
  image=":image-bazel2",
  format="Docker",
  registry="gcr.io",
  repository="asci-toolchain/suvanjan-test/image-bazel2",
  tag="experimental"
)


container_image(
  name="image-gradle2",
  layers=[":base-layer2",
          ":gradle-layer2",
          ":cfl-layer2"
  ]
)

container_push(
  name="image-gradle2-push",
  image=":image-gradle2",
  format="Docker",
  registry="gcr.io",
  repository="asci-toolchain/suvanjan-test/image-gradle2",
  tag="experimental"
)


container_image(
  name="image-bazel-gcloud2",
  layers=[":base-layer2",
          ":bazel-layer2",
          ":gcloud-layer2",
          ":cfl-layer2"
  ]
)

container_push(
  name="image-bazel-gcloud2-push",
  image=":image-bazel-gcloud2",
  format="Docker",
  registry="gcr.io",
  repository="asci-toolchain/suvanjan-test/image-bazel-gcloud2",
  tag="experimental"
)


container_image(
  name="image-gradle-gcloud2",
  layers=[":base-layer2",
          ":gradle-layer2",
          ":gcloud-layer2",
          ":cfl-layer2"
  ]
)

container_push(
  name="image-gradle-gcloud2-push",
  image=":image-gradle-gcloud2",
  format="Docker",
  registry="gcr.io",
  repository="asci-toolchain/suvanjan-test/image-gradle-gcloud2",
  tag="experimental"
)

