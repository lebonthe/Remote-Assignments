/*: # Part 1: Git & Github
 1. 已完成
 2. 舉例跟著編號可重現 Part 1 的交作業步驟
    * a. git status
        顯示目前 Git repository 的狀態，包含目前在哪一個 branch 上、有無檔案可以 commit、有無 untracked 的檔案。
        - Ex 1. 使用 `mkdir Remote-Assignments` 於桌面建立交作業的 repository，使用 `git init` 建立一個 .git repository 在內，此時使用 `git status`，會看到目前位於 branch master，還沒有任何 commit，也沒有東西可以 commit。
    * b. git diff
        顯示檔案之間的變化，包含 commits 之間的變更與自前次 commit 以來 working tree 中的修改。
        - Ex 5. 使用 `git diff`看到從剛剛 commit 到現在我所有在 week1.playground 中新增的文字。
    * c. git add
        將 file 放到暫存區的動作，在暫存區、已經 staged 的檔案可以被 commit。
        - Ex 2. 將本週作業的影片進度截圖與 week1.playground 放到 week1 資料夾中，此時輸入 `add .`將所有變更都 staged。再輸入`git status`看到暫存區裡多了許多綠色的檔名。此時想起還有一張圖片沒有放進來，放入 week1 後使用 `git add week1/星號 `將 week1 裡面的檔案都 staged。
    * d. git reset ep.6
        將已經 staged 的檔案取消 staged，從暫存區放回 working tree。
        - Ex. 使用`git reset HEAD`將檔案變為 Unstaged。
    * e. git commit
         commit 記錄當下 repository 的樣貌，以及跟前次版本的差異。
        - Ex 3. 將 staged 的檔案們使用 `git commit -m "交作業"。
    * f. git log
         查看 commits 的詳細資料。
        - Ex 4. 使用`git log`可以看到剛剛 commit 的 hash 值、作者、時間與 title。
 
    * g. git branch
        branch 從某個 commit 中分出來，在這個 branch 中進行的修改都不會影響到主要的 branch。
        - Ex 8. 使用`git branch -vv --all`查詢包含遠端的所有 branch。在 Github 中創建的 repository，是 main branch。從本機 push 上去的 commit 屬於 master branch。第三個 branch 則是本機的 origin/master。
    * h. git merge
        將兩個 branch 合併在一起， merge 將一個 branch 的修改加入到另一個 branch(通常是 master branch）。
        - Ex 9. 在 playgound 中撰寫作業的同時，對 git 來說就發生了 untracked 的變化。將目前的變化 staged 後並 commit。
    * i. git push [ repo_name ][branch_name]
         將 local repository 上傳到雲端，稱為 push。
    - Ex 7. 使用`git push --set-upstream origin master`將本機的 local branch 追蹤 remote 的 master branch。成功後在 github 上看到 master branch 中有剛剛的 commit。
    * j. git remote
        存在雲端的 repositry 稱為 remote。
    - Ex 6. 到 GitHub 網站，點選 New repository，創建同名 repository。複製 HTTPS 的 URL，使用`git remote add origin 網址`建立 remote，並使用`git remote -v`檢查確定 remote 成立。
    * k. fork
        當想要取得別人在 Github 中的 repository 以更改，但自己沒有權限時，透過 fork 複製該專案到自己的 GitHub 帳號下，讓自己能夠 clone 下來並變更它。
        - Ex. 想要在 Official Kodeco Swift Style Guide 裡更改內容，到他們的網址 https://github.com/kodecocodes/swift-style-guide 點選 fork，選擇 Create a new fork 到自己的帳號下。接著複製 HTTPS：https://github.com/lebonthe/swift-style-guide.git ，開啟 terminal，輸入 `git clone HTTPS`，這個 repository 就下載到本機中。
    * l. (Advanced) git rebase
    * m. (Advanced) git cherry-pick
    * n. (Advanced) git reflog
    * o. (Advanced) git tag
 3.
 
 */
/*: # Part 2: Basic
 1. let 定義常數，一但用 let 宣告了一個常數，其值不能再改變。 var 定義變數，一但用 var 宣告了一個變數，該變數可以改變，但僅限與宣告時的型別相同。
      - Ex.(取消下方註解）*/
//    let a = 1
//    a = 2 // 這樣會出現系統紅色錯誤，因為 a 是常數，不能再指定成另一個值
//    var b: Int = 2
//    b = 3  // b 可以指定為 3，因為 b 是變數
//    b = "hello" // 即便 b 是變數，但因為他的型別已經指定成整數，因此不能再指定成 String
/*:2. 使用 let 定義 pi，因為圓周率 pi 是一個固定的數值。(取消下方註解）*/
//      let pi: Double = 3.14159
/*:3.(取消下方註解）*/
//        let x = 10
//        let y = 20
//        let average = (x + y) / 2
/*:4. 可在兩個常數 x 與 y 宣告時就宣告為 Double，平均會更精準。(取消下方註解）*/
//:(1)
//let x = 10.0
//let y = 20.0
//let average = (x + y) / 2
/*:(2) 因為 10 / 3 是兩個整數相除，當無法整除時，會無條件捨去多出來的小數。因此 10 / 3 的結果會是 3。但 10.0 / 3.0 是兩個浮點數相除，因此能夠保留相除後得出的小數部分。因此 10.0 / 3.0 的結果是除不盡的 3.33333333...。- Ex.(取消下方註解）*/
//print("10 / 3 = \(10 / 3)")
//print("10.0 / 3.0 = \(10.0 / 3.0)")
/*:5.(取消下方註解） */
//let c = 10
//let d = 3
//let remainder = 10 % 3
/*:6.(取消下方註解） */
//var flag: Bool = true
//var inputString: String = "Hello world."
//let bitsInBite: Int = 8
//let averageScore: Double = 86.8
/*:7. Type Inference 當我們定義一個常數或變數時，如果沒有指定 type，Swift 會根據我們指定給常數或變數的值，推斷它的 type。- Ex.(取消下方註解）*/
//let welcomeWords = "Hello World!" // 因為存到 constent welcomeWord 中的是 String，因此系統直接判定 welcomeWords 的 type 是 String。
/*:8. 因為沒有在宣告 phoneNumber 的時候將電話宣告為 String，因此系統透過 type inference 判定 phoneNumber 是 Int，若要再將 String 儲存到 phoneNumber 中，則會得到系統的紅色警告 Cannot assign value of type 'String' to type 'Int'。*/
//:9.(取消下方註解）
//var salary = 22000
//salary += 28000
//print(salary)
//:10.(取消下方註解）
//let e = 10
//let f = 10
//e == f

//: # Part 3: Collection
//: （一次取消下方全部註解）
////: 1.
//var myFriends: [String] = []
////: 2.
//myFriends = ["Ian","Bomi","Kevin"]
////: 3.
//myFriends += ["Michael"]
////: 4.
//myFriends.swapAt(2, 0)
////: 5.
//for i in 0..<myFriends.count {
//    print(myFriends[i])
//}
////: 6. 目前在 myFriends array 中的 index 只到 3，因為 array 中只有四個人，按照 array 的 index 排法為 0, 1, 2, 3，因此沒有 index 5。下方 for loop 中會 print 出每個人對應的 index:
//for i in 0..<myFriends.count {
//    print("index \(i) 為 \(myFriends[i])")
//}
////: 7.
//let firstElement = myFriends.first
////: 8.
//let lastElement = myFriends.last
////: 9.
//var myCountryNumber: [String:Int] = [:]
////: 10.
//myCountryNumber = ["US": 1,
//                   "GB": 44,
//                   "JP": 81
//]
////: 11.
//myCountryNumber.updateValue(0, forKey: "GB")
////: 12.像是第 9 題一樣，當要宣告一個空 dictionary 時，必須定義 key 跟 value 的值：
//let emptyDictionary: [String:String]
////: 13.
//// 方法一
//myCountryNumber.removeValue(forKey: "JP")
//// 方法二
//myCountryNumber["GB"] = nil

//: # Part 4: Control Flow
//: 1.(取消下方註解）
//let lottoNumbers = [10, 9, 8, 7, 6, 5]
//for i in 0..<lottoNumbers.count where i >= lottoNumbers.count - 3 {
//    print(lottoNumbers[i])
//}
//: 2.(取消下方註解）
//let lottoNumbers = [10, 9, 8, 7, 6, 5]
//for i in 1...lottoNumbers.count {
//        print(lottoNumbers[lottoNumbers.count - i])
//}
//print("----------------")
//for i in 0..<lottoNumbers.count where i % 2 == 0 {
//    print(lottoNumbers[i])
//}
//: 3.(取消下方註解）
//let lottoNumbers = [10, 9, 8, 7, 6, 5]
//var i = 1
//while i <= lottoNumbers.count {
//    print(lottoNumbers[lottoNumbers.count - i])
//    i += 1
//}
//print("----------------")
//i = 0
//while i < lottoNumbers.count {
//    if i % 2 == 0 {
//        print(lottoNumbers[i])
//    }
//    i += 1
//}
//: 4.(取消下方註解）
//let lottoNumbers = [10, 9, 8, 7, 6, 5]
//var i = 1
//repeat {
//    print(lottoNumbers[lottoNumbers.count - i])
//    i += 1
//} while i <= lottoNumbers.count
//print("----------------")
//i = 0
//repeat {
//    if i % 2 == 0 {
//        print(lottoNumbers[i])
//    }
//    i += 1
//} while i < lottoNumbers.count
/*: 5. while 當條件為 true，就會執行 code，一直到條件為 false 停止。repeat-while 則先執行 code，再驗證條件是否為 true，如果為 true 再繼續執行，如果為 false 則終止。兩者顯著的區別就是 repeat-while 至少會先執行一次 code，但 while 可能因為一開始的條件為 false 則完全不執行 code。 - Ex.(取消下方註解）*/
//let i = 1
//while i > 2 {
//    print("執行一次 while")
//}
//repeat {
//    print("執行一次 repeat-while")
//} while i > 2
//// 雖然兩種情況 i 都不大於 2，但 repeat-while print 一次結果。
//: 6.(取消下方註解）
//var isRaining: Bool = false
//if isRaining {
//    print("It’s raining, I don’t want to work today.")
//} else {
//    print("Although it’s sunny, I still don’t want to work today.")
//}
//: 7.(取消下方註解）
//var jobLevel = 7
//// if-else
//if jobLevel == 1{
//    print("Member")
//} else if jobLevel == 2 {
//    print("Team Leader")
//} else if jobLevel == 3 {
//    print("Manager")
//} else if jobLevel == 4 {
//    print("Director")
//} else {
//    print("We don't have this job")
//}
//// switch
//switch jobLevel {
//case 1:
//    print("Member")
//case 2:
//    print("Team Leader")
//case 3:
//    print("Manager")
//case 4:
//    print("Director")
//default:
//    print("We don't have this job")
//}
//: # Part 5: Function
//: 1. 第一個 return 的 type 為 String，第二個 return 的 type 為 Double
//: 2.
//func multiply(a: Int, b: Int = 10) {
//    print(a * b)
//}
//multiply(a: 100)

/*: 3. argument label 與 parameter name 都是 function 的參數名稱，不同的是 argument label 是用在 function declaration 的地方，而 parameter name 是用在 body of the function。看以下範例，go 跟 buy 是 argument label，shop 跟 drink 是 parameter name。在 body of the function 中想用 string interpolation 將參數放到句子中，只要用 parameter name 即可。而呼叫 function 時，參數只會顯示出 argument label。這樣的設計是為了讓程式可容易閱讀。 - Ex.(取消下方註解） */
//func buyADrink(go shop: String, buy drink: String){
//    print("I go to \(shop) to buy a \(drink).")
//}
//buyADrink(go: "Coco", buy: "Milk Tea")
//: 4.(取消下方註解）
//func greet(person name: String) -> String {
//    "Hello, \(name)"
//}
//let sentence = greet(person: "Luke")
//print(sentence)
//: ## 謝謝收看！
