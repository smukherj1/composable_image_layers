def _impl(ctx):
    out = ctx.outputs.out
    msg = ctx.attr.msg
    ctx.actions.run_shell(
        outputs=[out],
        command = "echo {msg} | tee {out}".format(
            msg = msg,
            out = out.path,
        ),
    )

foo = rule(
    attrs = {
        "msg": attr.string(),
    },
    outputs = {
        "out": "%{name}.txt",
    },
    implementation = _impl,
)
