# Contributing

欢迎补充新的 X-BTI / MBTI-like 项目，也欢迎修正文案、失效链接和分类位置。

## 收录标准

- 至少有一种公开入口：`Demo`、`Repo`、`Paper`、`Post` 四类之一。
- 必须有明确的 X-BTI / MBTI 衍生特征，而不是泛泛的 MBTI 科普或人格学内容。
- 优先收录原始来源、原作者仓库、官方 demo，避免二手搬运页优先于原始入口。
- 明显失效、无法访问、信息量过低的页面默认不收录。
- 描述要尽量中性，不把娱乐项目包装成心理学结论，也不把研究展示自动等同于严格验证。

## 推荐标签

- `viral`
- `parody`
- `research`
- `research-inspired`
- `career`
- `relationship`
- `fandom`
- `community`
- `repo`
- `demo`

## 条目模板

```md
- **[项目名](主链接)** — 一句话说明它是什么、为什么值得收录。 `Links: [Demo](...) / [Repo](...) / [Paper](...) / [Post](...)` `Tags: viral, research-inspired, demo`
```

建议：

- 一个项目只放进一个主分类，避免在多个分类重复出现。
- 如果它跨多个语境，用 `Tags:` 补足，而不是复制多份。
- 尽量说明它更偏娱乐、研究展示、工作场景还是关系场景。

## 提交前自查

- 链接可打开，且优先指向原始来源。
- 描述不夸大科学性或严肃性。
- 标签和分类相互一致。
- README 条目格式与现有条目保持一致。

## Validation

提交前可以在仓库根目录执行：

```sh
sh tests/validate_repo.sh
```

这个脚本会检查 README、收录规范和 CI workflow 是否都在位。GitHub Actions 也会在 `push` 和 `pull_request` 时自动运行同一套校验。
