# Contributing

欢迎补充新的 X-BTI / MBTI-like 项目，也欢迎修正文案、失效链接和作者信息。

## 收录标准

- 至少有一种公开入口：`Demo`、`Repo`、`Paper`、`Post` 四类之一。
- 必须有明确的 X-BTI / MBTI 衍生特征，而不是泛泛的 MBTI 科普或人格学内容。
- 优先收录原始来源、原作者仓库、官方 demo，避免二手搬运页优先于原始入口。
- 明显失效、无法访问、信息量过低的页面默认不收录。
- 描述要尽量中性，不把娱乐项目包装成心理学结论，也不把研究展示自动等同于严格验证。

## 条目模板

README 中的条目为 Markdown 表格行，格式如下：

```md
| **项目名** | 一句话描述。 | 作者/来源 | [Demo](...) / [Repo](...) |
```

Credit 列说明：
- GitHub 用户：`[@用户名](https://github.com/用户名)`
- 社交平台用户：`用户名@平台`（如 `慕容元夜@小红书`）
- 暂未确认作者：`*待认领*`

## 提交前自查

- 链接可打开，且优先指向原始来源。
- 描述不夸大科学性或严肃性。
- README 条目格式与现有条目保持一致。
- `README.md` 与 `index.html` 需同步更新（两边信息保持一致）。

## Validation

提交前可以在仓库根目录执行：

```sh
sh tests/validate_repo.sh
```

这个脚本会检查 README、收录规范和 CI workflow 是否都在位。GitHub Actions 也会在 `push` 和 `pull_request` 时自动运行同一套校验。

## 联系方式

如有疑问或建议，可以通过以下方式联系：

- GitHub [Issue](https://github.com/HenryLau7/awesome-mbti/issues) 或 PR
- 邮件：yuanyeliu7@gmail.com
