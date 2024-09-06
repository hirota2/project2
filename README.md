# project2
オリジナルアプリの作成

サービス概要
どんなサービスなのかを３行で説明してください。

・ポモドーロタイマーを使い、勉強やトレーニングなどに費やした時間を記録するサービスです。
1日の目標学習時間の設定や棒グラフを利用し、自身の努力を可視化、記録することで危機感もしくは達成感
を感じてもらい、それらを学習意欲や継続意欲に繋げてもらうことが目的です。

■ このサービスへの思い・作りたい理由
このサービスの題材となるものに関してのエピソードがあれば詳しく教えてください。
このサービスを思いつくにあたって元となる思いがあれば詳しく教えてください。

・RUNTEQに入り、学習を進める上で初めて使ってみましたが、効果を感じました。
私は勉強を集中するところまでが大変で、机に向かっても勉強以外のことをあれこれ考えてしまい、あまり集中できず1日が終わることが多くありました。ポモドーロタイマーを使い始めてからは、タイマーを入れると同時に自身も時間までやろうという気持ちの切り替えができました。使う前より集中出来るようになりました。

■ ユーザー層について
決めたユーザー層についてどうしてその層を対象にしたのかそれぞれ理由を教えてください。

・学生や社会人

■サービスの利用イメージ
ユーザーがこのサービスをどのように利用できて、それによってどんな価値を得られるかを簡単に説明してください。

・使用までのハードルを下げるために、トップページで直ぐにポモドーロタイマーを利用できるようにする。
デフォルトでタイマーセット状態にし、即開始できるようにする。
・ログインするとタスクごとに学習時間の記録、目標学習時間の設定、累計学習時間など表示できるようにする
学習記録はその日の記録と過去7D、28D、3M(切り替え可能)の範囲で横軸日付、縦軸時間の棒グラフで作り、一目でわかるようにする。

■ ユーザーの獲得について
想定したユーザー層に対してそれぞれどのようにサービスを届けるのか現状考えていることがあれば教えてください。

・Xで呼びかけ

■ サービスの差別化ポイント・推しポイント
似たようなサービスが存在する場合、そのサービスとの明確な差別化ポイントとその差別化ポイントのどこが優れているのか教えてください。
独自性の強いサービスの場合、このサービスの推しとなるポイントを教えてください。

・日本語で制作する　→　他のアプリは言語が英語であることが多い。
・立ち上げてから使用までが1タップ　→ 細かい使い方の説明から入るアプリもあるが、1タップで使えるのでハードルは低いと思います。まずは触ってもらって雰囲気を掴んでもらう方向で作ろうと思います。わからない時用に説明欄に飛べるボタンも作ります。
・タスクごとに学習時間を記録し7D、28D、3M、を切り替えて棒グラフで表示　→ 学習記録を棒グラフで見れるものは他アプリでも少ない。一目でどれだけ頑張ったかが分かり、達成感や継続意欲を刺激します。（ログインが必要）

■ 機能候補
現状作ろうと思っている機能、案段階の機能をしっかりと固まっていなくても構わないのでMVPリリース時に作っていたいもの、本リリースまでに作っていたいものをそれぞれ分けて教えてください。

MVP
・ポモドーロタイマー機能（スタート、ストップ、一時停止、タイマー時間変更など）
・ポモドーロタイマーの説明や操作説明など
・タイマー中に流すBGMや通知音の設定

本リリース
・ログイン機能
・タスク（達成目標）ごとの目標学習時間の設定
・学習記録機能（過去7D、28D、3M(切り替え可能)の範囲で横軸日付、縦軸時間の棒グラフ）
・タスク完了時のシェア機能

■ 機能の実装方針予定
一般的なCRUD以外の実装予定の機能についてそれぞれどのようなイメージ(使用するAPIや)で実装する予定なのか現状考えているもので良いので教えて下さい。

・Chart.js：グラフ
・Howler.js：BGMや通知音
・WebStorage：ログインしなくてもデータを保存できる

これらを使用