ANSWERS = <<-EOS.split("\n")
Signs point to yes.
Yes.
Reply hazy, try again.
Without a doubt.
My sources say no.
As I see it, yes.
You may rely on it.
Concentrate and ask again.
Outlook not so good.
It is decidedly so.
Better not tell you now.
Very doubtful.
Yes - definitely.
It is certain.
Cannot predict now.
Most likely.
Ask again later.
My reply is no.
Outlook good.
Don't count on it.
EOS

run lambda {|env| [200, {"Content-Type" => "text/plain"}, ANSWERS[rand(ANSWERS.size)]]}