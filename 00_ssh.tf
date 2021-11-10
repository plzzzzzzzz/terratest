resource "aws_key_pair" "jskim_key" {
  key_name = "jskim2-key"
#  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDuNS4pEBzxi9J2YKKGiripdKCQl4YdHlXM0sLIikF0WawruVVr1L2VtcoAveIJ7LCRADTpoZLsxRxVFJ7fBa+sOSJ2a6MQxINOsgBy5gsHn6jxNJDma+oiKvK6vQDPxjx8rN205xzzga9kJdWiIj04u3xeNUkCF1zHXrkf9+1hlF10SJ/ShAnnfoO7K1xvYr7xPC/awg/eiyERGKjt4PTfV91pcOh7J11LPny5TBuJyeqBoSDf/9B0hcq4LDG6228JtejmtR4DsT3J/kSs7pJUVBN+H0tzGZTuCqHks0OgM+NMMfdzMpcvwrhB3qbupxs0qumSUKrVxtAia4XfGQsjzL9h1NtatN9/YsM3rS6LcKNiVhoNtINk2QYIOSKyv/BjNNWYUmm6ra82OfA5fbqLD/GLjFtVai4v4TcqZ497ery7sWn7maV9xTSkSgBCA4CG/HAyuDS72ypY89MmN420LcDf5OWfbY5Pt3sE+Ip+i19QRliZNAHuMLlc0Iy97E="
  public_key = file("../../.ssh/jskim-key.pub")
}