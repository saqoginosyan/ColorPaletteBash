# !/bin/bash
 
# Take two colors

echo "Choose two colors you want to mix :"
echo -e "\e[34mBlue \e[31mRed \e[33mYellow \e[32mGreen \e[97mWhite"
read firstColor
read secondColor
colors=${firstColor,,}${secondColor,,}

# Switch Case for mixing colors
case $colors in
  bluered|redblue)res=`echo -e "\e[35mPurple"`
  ;;
  blueyellow|yellowblue)res=`echo -e "\e[32mGreen"`
  ;;
  bluegreen|greenblue)res=`echo -e "\e[36mTeal"`
  ;;
  bluewhite|whiteblue)res=`echo -e "\e[96mLight blue"`
  ;;
  whitered|redwhite)res=`echo -e "\e[95mPink"`
  ;;
  redgreen|greenred)res=`echo -e "\e[31mRed\e[32mGreen"`
  ;;
  yellowred|redyellow)res=`echo -e "\e[33mOrange"`
  ;;
  yellowgreen|greenyellow)res=`echo -e "\e[33mYellow\e[32mGreen"`
  ;;
  yellowwhite|whiteyellow)res=`echo -e "\e[93mLight yellow"`
  ;;
  whitegreen|greenwhite)res=`echo -e "\e[92mLight green"`
  ;;
  blueblue)res=`echo -e "\e[34mBlue"`
  ;;
  redred)res=`echo -e "\e[31mRed"`
  ;;
  yellowyellow)res=`echo -e "\e[33mYellow"`
  ;;
  greengreen)res=`echo -e "\e[32mGreen"`
  ;;
  whitewhite)res=`echo -e "\e[97mWhite"`
  ;;
  *)res=`echo "Wrong color"`
  ;;
esac
echo "Result : $res"
