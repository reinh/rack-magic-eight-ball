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

html = <<-HTML
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
   "http://www.w3.org/TR/html4/strict.dtd">

<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Magic Eight Ball</title>
  <meta name="author" content="Rein Henrichs">
  <link rel="stylesheet" href="/css/style.css" type="text/css" media="screen" charset="utf-8">
</head>
<body>
  <div id="eight-ball">
    <h1>%s</h1>    
  </div>
</body>
</html>
HTML

run lambda {|env| [200, {"Content-Type" => "text/html"}, html % ANSWERS[rand(ANSWERS.size)]]}

