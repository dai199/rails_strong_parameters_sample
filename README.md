# RailsとStrong Parameters

## 概要
Rails4から導入された、ユーザーから送られてきた値を安全に取り扱うための仕組みです。
予期していないパラメーターをはじくことができます。

## 例1(基本形)
params.require(:user).permit(:name, :email)

{
  user: {
    name: 'sample',
    email: 'info@example.com'
    introduction: 'sample' # 通過しない
  }
}

## 例1_2(requireで指定したキーがなければエラー)
params.require(:user).permit(:name, :email)

{
  sp: {
    name: 'sample',
    email: 'info@example.com'
  }
}

## 例1_3(指定したキーがない場合にデフォルト値を設定)
params.fetch(:user, {}).permit(:name, :email)

{
  sp: {
    name: 'sample',
    email: 'info@example.com'
  }
}

## 例2(require無し系)
params.permit(:name, :email)
{
  name: 'sample',
  email: 'info@example.com'
  user: {
    name: 'sample',
    email: 'info@example.com'
  }
}

## 例3(すべて許可, permit!)
params.require(:user).permit!

{
  user: {
    name: 'sample',
    email: 'info@example.com',
    introduction: 'sample'
  }
}

## 例4(配列を許可)
params.require(:user).permit(:name, :email,
  post_attributes: []
)

{
  user: {
    name: 'sample',
    email: 'info@example.com',
    post_attributes: ["1", "2", "3"]
  }
}

## 例5(ネストしたパラメーターを許可)
params.require(:user).permit(:name, :email,
  post_attributes: [:id]
)

{
  user: {
    name: 'sample',
    email: 'info@example.com',
    post_attributes: {
      "0": {
        id: '123',
        content: 'sample'
      },
      "1": {
        id: '123',
        content: 'sample'
      }
    }
  }
}