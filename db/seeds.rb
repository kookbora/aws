# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

question = ["뇌구조를 적어볼까요. 머릿속에서 가장 크게, 중요하게 생각되는 것부터 순서대로 적어주세요.", "오늘은 하고 싶지 않지만 해두면

도움이 될 것 같은 일은 무엇이 있나요?", "최근에 공허함을 느꼈을 때는 언제인가요?", "오늘의 날씨는 어떤가요? 오늘의 날씨와 관련된 추억이

있다면?", "현재 당신과 가장 가까운 관계에 있는 사람은 누구인가요?", "요즘에는 무슨 공부를 하고 있나요?", "가장 최근에 들었던 음악, 기억나

는 음악은 무엇인가요?", "이번 주에는 어떤 것을 이루었나요?", "이번 주에 가장 감사했던 일은 무엇이 있었나요?", "최근에 들은 가장 안타까운

소식은 무엇이었나요?", "지금 마음 한구석을 괴롭히는 일이 있나요?", "최근에 가장 갖고 싶은 물건이 있다면 어떤 것이 있나요?", "오늘 나 스스

로에게 해주고싶은 말이 있나요?", "지금 당장 누구를 꼭 껴안아주고 싶은가요?", "당신만의 기분전환법 한가지를 알려주세요", "최근에 최선을

다했던 일은 무엇이 있었나요?", "오랜만에 보고싶은 사람이 있나요? 무엇을 함께하고싶은가요?", "애정을 갖고 기르거나 만들고 있는 것이 있나

요?", "최근에 꾸었던 꿈중에 기억나는 꿈이 있나요? 꿈에서 깨어났을 때 어떤 기분이었나요?", "지금 가장 고민하고 것은 무엇에 대한 것 인가

요?", "갑자기 시간이 많아진다면 무엇을 하고 싶은가요?", "당신이 가장 사랑하는 사람은 누구인가요? 그 사람을 위해 무엇을 하고 있나요?", "스

스로를 위하여 무엇을 투자하고 있나요?", "지금 당신의 꿈과 몇 발자국 떨어져 있다고 생각하시나요?", "죽음에 대하여 어떻게 생각하세요?", "가

장 적은 노력으로 지금 당신이 원하는 걸 얻기 위해서는 어떻게 해야할까요?", "누군가와 당신을 비교한 적이 있나요? 어떤 기분이 들었나요?", "

최근에 보거나 들은 이야기들 중에서 가장 생각나는 이야기는 무엇이있나요? 그 이야기에서 무엇을 느꼈나요?", "당신이 지금 죽는다면 어떤 생

각을 할까요?", "2달 후에 당신은 무엇을 이루었을까요?", "10년 후 당신은 어떤 사람이 되어있을까요?"]
question.each do |q|
    Question.create(today: q)

admin_user = User.create(email: 'admin@email.com', password: '123456')
admin_user.add_role :admin
end