# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ProjectStatus.create!(
    [
        {
            name: '実行中',
        },
        {
            name: '成功',
        },
        {
            name: '失敗',
        }
    ]
)


Project.create!(
    [
        {
            owner: 'murakami',
            title: 'yatterを作る',
            project_status_id: 1,
            cheered_count: 3
        },
        {
            owner: 'sudame',
            title: '筑波大学を受験する',
            project_status_id: 3,
            cheered_count: 0
        },
        {
            owner: 'iwanami',
            title: '趣味の話をする',
            project_status_id: 2,
            cheered_count: 100
        },
        {
            owner: 'sou',
            title: '着手報告会成功したい',
            project_status_id: 1,
            cheered_count: 100000000
        }
    ]
)

Comment.create!(
    [
        {
            name: 'murakami',
            comment: 'いいじゃん',
            project_id: 1,
        },
        {
            name: 'suzuki',
            comment: 'わかる',
            project_id: 1,
        },{
            name: 'tanaka',
            comment: 'それな',
            project_id: 3,
        },
        {
            name: 'sasaki',
            comment: 'ささきもそう感じた',
            project_id: 3,
        },
        {
            name: 'murakami',
            comment: 'すごい',
            project_id: 2,
        }
    ]
)

