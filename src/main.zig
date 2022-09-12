const std = @import("std");
const p = std.log.info;


// repo zig ling's

const myStruct =  struct {
  num: i32,
  otherNum: u8,
};




const myEnum = enum{
     choice1, 
     choice2,

};



pub fn main() anyerror!void {


    
     const myThug : myStruct = myStruct {
        .num =  -32,
        .otherNum =  24,

     };

    

     var arr: [3]u32 = undefined; // I am going to define it soon
     arr = [3]u32{1, 2, 3};


     // you can allow zig to infer the size and type like this 
     var infer =  [_]u32{1, 3, 4, 5, 6, 6, 7};
    infer[0] = 3000;
    const arrLen: usize = infer.len; 


    // concat arrays 
    const a = [_]u8{1, 2};
    const b = [_]u8{3, 4};
    const c = a ++ b ++ ([_]u8{5} ** 2);   // last part repeats array 2 times


    for(c) |v|{

       p("{any}", .{v});
    }


// string in zig are a u8 array 


    const myLove = "Mbali";
    for(myLove) |m|{

        p("{u}", .{m});
    }

    //  can loop over index too 
    for(myLove) |love, index|{
        p("i = {}, M ={u}",.{index, love});
    }
    std.log.info("{any}", .{c});

    std.log.info("All your codebase are belong to us. {}, {}, {any}, {any}, {}", .{myThug, myEnum, arr, infer[0], arrLen});

    // if's 
    const one = 1;

      if(one == 1){
          p("is one", .{});
      }

      // if expressions return value

      const cond = true;

       const fromCond = if(cond) 2 else 1;
       p("{}", .{fromCond});


       // cool as while loop 

       var f:u32 = 1; 
     while(f < 1024) : (f *= 2){
         // continue here will not run the code below but tell the loop to continue
         p("f =  {}", .{f});
     }
 



   p("fizzzzbuzz", .{});



   var t:u8 = 0; 


   while(t < 100): (t += 1){

      if(t % 2 == 0) p("fizz {}", .{t});
      if(t % 5 == 0) p("buzz {}", .{t});
      if((t % 2 == 0) and (t % 5 == 0)) p("fizzzzbuzz {}", .{t});

   }


   p("{any}", .{deepThought()});
    
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}




fn deepThought() void {
     p("{any}", .{[_]u8{2}});
}